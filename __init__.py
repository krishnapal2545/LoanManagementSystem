from werkzeug.utils import secure_filename
from flask import Flask , render_template , request,redirect,flash
from flask_sqlalchemy import SQLAlchemy
import string, random, os , datetime

local = False
app = Flask(__name__)
UPLOAD_FOLDER = 'static/profile/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
if local:
  app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost/redlms"
else:
  app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@redcarpetlms.herokuapp.com//database.sql"
app.config['SECRET_KEY'] =''.join(random.choices(string.ascii_uppercase+string.ascii_lowercase + string.digits,k=20))
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Loan(db.Model):
    __tablename__ = 'loan'
    id = db.Column(db.Integer(),primary_key = True)
    Loan_id = db.Column(db.String(100) ,primary_key = True)
    Title = db.Column(db.String())
    Thumbnail = db.Column(db.String())
    Banner = db.Column(db.String())
    Description = db.Column(db.String())
    Features = db.Column(db.String())
    Eligibilty = db.Column(db.String())
    Terms = db.Column(db.String())
    Repayment = db.Column(db.String())
    Loanbook = db.relationship('Loanbooked',backref='Loan',lazy = 'dynamic') 

class User(db.Model):
    __tablename__='user'
    id = db.Column(db.Integer(),primary_key = True)
    Account_No = db.Column(db.String(),primary_key=True)
    Name = db.Column(db.String())
    Photo	= db.Column(db.String())
    Phone	= db.Column(db.String())
    Email	= db.Column(db.String())
    Aadhar	= db.Column(db.String())
    Pan	    = db.Column(db.String())
    Password= db.Column(db.String())
    Loan_id	= db.Column(db.String())
    Loan_Date= db.Column(db.Date())
    Pay_Date= db.Column(db.Date())
    Payment= db.Column(db.Date())
    Amount	= db.Column(db.Float())
    Balance	= db.Column(db.Float())
    Intrest	= db.Column(db.Float())
    Intrate= db.Column(db.Float())
    Login = db.Column(db.Boolean, default=False)
    Status = db.Column(db.Boolean(), default= False)
    Loanbook = db.relationship('Loanbooked',backref='user',lazy = 'dynamic') 

class Agent(db.Model):
    __tablename__='agent'
    id = db.Column(db.Integer(),primary_key = True)
    ID_Number = db.Column(db.String())
    Name = db.Column(db.String())
    Photo	= db.Column(db.String())
    Phone	= db.Column(db.String())
    Email	= db.Column(db.String())
    Password= db.Column(db.String())
    Login = db.Column(db.Boolean, default=False)

class Admin(db.Model):
    __tablename__='admin'
    id = db.Column(db.Integer(),primary_key = True)
    Login_id = db.Column(db.String())
    Name = db.Column(db.String())
    Photo	= db.Column(db.String())
    Phone	= db.Column(db.String())
    Email	= db.Column(db.String())
    Password= db.Column(db.String())
    Login = db.Column(db.Boolean, default=False)

class Loanbooked(db.Model):
    __tablename__='loanbooked'
    id = db.Column(db.Integer(),primary_key = True)
    User_ac = db.Column(db.String(),db.ForeignKey('user.Account_No'))
    Loan_id = db.Column(db.String(),db.ForeignKey('loan.Loan_id'))
    Status = db.Column(db.String(), default= 'New')


@app.route('/')
def home():
    loan=Loan.query.all()
    agent = False
    return render_template('home.html',Loans=loan,Agent=agent)

@app.route('/register',methods=['GET','POST'])
def register():
    if request.method == 'POST':
        passw = request.form['pass']
        cpassw = request.form['cpass']
        if passw != cpassw:
            flash("Password and Confirm Password doesn't Match")
            return render_template('register.html')
        name = request.form['name']
        phone= request.form['phone']
        email = request.form['email']
        aadhar = request.form['aadhar']
        pan = request.form['pan']
        photo = request.files['photo']
        if User.query.filter_by(Name=name,Phone=phone,Email=email,Aadhar=aadhar,Pan=pan).first():
            user = User.query.filter_by(Name=name,Phone=phone,Email=email,Aadhar=aadhar,Pan=pan).first()
            flash(f"Your Account Number is {user.Account_No} use this for login ")
            return redirect('/login')
        if photo :
            filename = secure_filename(photo.filename)
            photo.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        while True :
               ac_no =''.join(random.choices(string.ascii_uppercase + string.digits,k=10))
               demo = User.query.filter_by(Account_No = ac_no).first()
               if demo :
                   continue
               else :
                   break
        filename = 'profile/'+filename
        create = User(Account_No=ac_no,Name=name,Phone=phone,Email=email,Aadhar=aadhar,Pan=pan,Password=passw,Photo=filename)
        db.session.add(create)
        db.session.commit()
        flash(f"Your Account Number is {ac_no} use this for login ")
        return redirect('/login/user')
    return render_template('register.html')

@app.route('/login/<who>',methods=['GET','POST'])
def login(who):
    if who == 'user':
        if request.method == 'POST':
            ac_no = request.form['ac_no']
            passw = request.form['pass']
            if User.query.filter_by(Account_No=ac_no,Password=passw).first():
               user = User.query.filter_by(Account_No=ac_no,Password=passw).first()
               if user.Login == True:
                   flash("You have Already Login in other device !!")
                   return render_template('login.html',Who=who)
               user.Login = True
               db.session.commit()
               return redirect(f'/profile/{user.Account_No}')
            else:
               flash("Invalide Account Number or Password")
        return render_template('login.html',Who=who)
    elif who == 'agent':
        if request.method == 'POST':
            id_no = request.form['id_no']
            passw = request.form['pass']
            if Agent.query.filter_by(ID_Number=id_no,Password=passw).first():
               user = Agent.query.filter_by(ID_Number=id_no,Password=passw).first()
               if user.Login == True:
                   flash("You have Already Login in other device !!")
                   return render_template('login.html',Who=who)
               user.Login = True
               db.session.commit()
               return redirect(f'/profile/{user.ID_Number}')
            else:
               flash("Invalide Login ID or Password")
        return render_template('login.html',Who=who)
    elif who == 'admin':
        if request.method == 'POST':
            ac_no = request.form['log_id']
            passw = request.form['pass']
            if Admin.query.filter_by(Login_id=ac_no,Password=passw).first():
                user = Admin.query.filter_by(Login_id=ac_no,Password=passw).first()
                if user.Login == True:
                   flash("You have Already Login in other device !!")
                   return render_template('login.html',Who=who)
                user.Login = True
                db.session.commit()
                return redirect(f'/profile/{user.Login_id}')
            else:
                flash("Invalide Login ID or Password")
        return render_template('login.html',Who=who)

@app.route('/profile/<id>',methods=['GET','POST'])
@app.route('/profile/<id>/<auth>',methods=['GET','POST'])
def profile(id,auth=None):
    user = User.query.filter_by(Account_No=id).first()
    if user:
        print(user.Intrest)
        datenow = datetime.date.today()
        print(user.Payment.month - datenow.month)
        if (user.Payment.month - datenow.month) > 0:
            user.Intrest = user.Intrest+ user.Balance * user.Intrate * 0.01
            user.Payment = datenow
            db.session.commit()
        print(user.Intrest)
        if auth:
           admin = Admin.query.filter_by(Login_id=auth).first()
           agent = Agent.query.filter_by(ID_Number=auth).first()
           if admin:
                if admin.Login:
                  return render_template('userprofile.html',User=user,auth=auth)
           if agent:
                if agent.Login:
                   return render_template('userprofile.html',User=user,auth=auth)
        if user.Login:
            return render_template('userprofile.html',User=user)
    admin = Admin.query.filter_by(Login_id=id).first()
    if admin:
        if admin.Login:
            if request.method=='POST':
               status = request.form['status']
               ac_no = request.form['ac_no']
               loanid=request.form['loanid']
               loan = Loanbooked.query.filter_by(User_ac=ac_no,Loan_id=loanid).first()
               if loan:
                    if status=='Reject':
                      loan.Status= 'Reject'
                    if status == 'Approved':
                      loan.Status= 'Approved'
                      user = User.query.filter_by(Account_No=ac_no).first()
                      user.Loan_Date = datetime.date.today()
                      user.Payment = user.Loan_Date
                      user.Status = True
               db.session.commit()
               return redirect(f'/profile/{id}')
            alluser = User.query.all()
            alloanbook = Loanbooked.query.all()
            allloan = Loan.query.all()
            allagent = Agent.query.all()
            return render_template('authprofile.html',User=admin,Alluser=alluser,Loanbook=alloanbook,Loan=allloan,Agent=allagent,admin=True)
    agent = Agent.query.filter_by(ID_Number=id).first()
    if agent:
        if auth:
           admin = Admin.query.filter_by(Login_id=auth).first()
           if admin:
                if admin.Login:
                  return render_template('authprofile.html',User=agent,auth=auth)
        if agent.Login:
            alluser = User.query.all()
            allloan = Loan.query.all()
            alloanbook = Loanbooked.query.all()
            return render_template('authprofile.html',User=agent,Loan=allloan,Loanbook=alloanbook,Alluser =alluser,agent=True)
       
    return redirect('/')

@app.route('/logout/<no>')
def logout(no):
    user = User.query.filter_by(Account_No=no).first()
    if user:
        user.Login = False
        db.session.commit()
        return redirect('/')
    user = Agent.query.filter_by(ID_Number=no).first()
    if user:
        user.Login = False
        db.session.commit()
        return redirect('/')
    user = Admin.query.filter_by(Login_id=no).first()
    if user:
        user.Login = False
        db.session.commit()
        return redirect('/')

@app.route('/addagent',methods=['GET','POST'])
def addagent():
    if request.method == 'POST':
        passw = request.form['pass']
        cpassw = request.form['cpass']
        if passw != cpassw:
            flash("Password and Confirm Password doesn't Match")
            return render_template('addagent.html')
        name = request.form['name']
        phone= request.form['phone']
        email = request.form['email']
        photo = request.files['photo']
        if Agent.query.filter_by(Name=name,Phone=phone,Email=email).first():
            user = Agent.query.filter_by(Name=name,Phone=phone,Email=email).first()
            flash(f"Your ID Number is {user.ID_Number} use this for login ")
            return redirect('/login')
        if photo :
            filename = secure_filename(photo.filename)
            photo.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        while True :
               id_no =''.join(random.choices(string.ascii_uppercase + string.digits,k=5))+'AGENT'
               demo = Agent.query.filter_by(ID_Number = id_no).first()
               if demo :
                   continue
               else :
                   break
        filename = 'profile/'+filename
        create = Agent(ID_Number=id_no,Name=name,Phone=phone,Email=email,Password=passw,Photo=filename)
        db.session.add(create)
        db.session.commit()
        flash(f"Agent ID Number is {id_no} use this for login ")
        return redirect('/login/agent')
    return render_template('addagent.html')


@app.route('/loan/<id>')
def loan(id):
    loan = Loan.query.filter_by(Loan_id=id).first()
    agent = False
    return render_template('loan.html',Loan=loan,Agent=agent)

@app.route('/apply/<loanid>/<auth>',methods=['GET','POST'])
def apply(loanid,auth):
    alluser = User.query.all()
    if request.method == 'POST':
        ac_no = request.form['ac_no']
        user = User.query.filter_by(Account_No=ac_no).first()
        if user.Loan_id:
            flash("User Can Have only one loan till the loan Complete")
            return redirect(f'/profile/{auth}')
        if user:
            user.Amount = float(request.form['amount'])
            user.Balance = float(request.form['amount'])
            user.Intrate = float(request.form['intrate'])
            user.Pay_Date = request.form['lastdate']
            user.Intrest = user.Amount * user.Intrate
            user.Loan_Date = datetime.date.today()
            user.Loan_id = loanid
            db.session.commit()
            if Loanbooked.query.filter_by(User_ac=ac_no,Loan_id=loanid).first():
                flash("Loan is already Applied ")
                return redirect(f'/profile/{auth}')
            loan=Loanbooked(User_ac=ac_no,Loan_id=loanid,Status='New')
            db.session.add(loan)
            db.session.commit()
            flash("Loan Applied Successfully")
            return redirect(f'/profile/{auth}')
        else:
            flash(f"Account Number dosen't exist!!")
    return render_template('apply.html',Alluser=alluser)

@app.route('/editloan/<loanid>/<ac>/<auth>',methods=['GET','POST'])
def editapply(loanid,ac,auth):
        login=False
        user=False
        boan=Loanbooked.query.all()
        for loan in boan:
            if loan.Status=='Approved' and loan.User_ac == ac:
              flash("Loan is Approved You can't Edit it")
              return redirect(f'/profile/{auth}')
        if request.method == 'POST':
            if request.form['logid']:
               logid=request.form['logid']
               passw = request.form['pass']
               if Agent.query.filter_by(ID_Number=logid,Password=passw).first():
                   login=True
                   user = User.query.filter_by(Account_No=ac).first()
            elif request.form['ac']:
               user = User.query.filter_by(Account_No=ac).first()
               user.Amount = float(request.form['amount'])
               user.Balance = float(request.form['balance'])
               user.Intrate = float(request.form['intrate'])
               user.Pay_Date = request.form['lastdate']
               user.Intrest = user.Amount * user.Intrate
               user.Loan_Date = request.form['startdate']
               db.session.commit()
               flash("Loan Updated Successfully")
               return redirect(f'/profile/{auth}')
        return render_template('editloan.html',Login=login,User=user)

@app.route('/edituser/<id>',methods=['GET','POST'])
@app.route('/edituser/<id>/<auth>',methods=['GET','POST'])
def edituser(id,auth=None):
    user = User.query.filter_by(Account_No=id).first()
    if user:
        if user.Login:
            if request.method == 'POST':
                user.Name = request.form['name']
                user.Phone= request.form['phone']
                user.Email = request.form['email']
                user.Aadhar = request.form['aadhar']
                user.Pan = request.form['pan']
                f = request.files['photo']
                if f :
                  filename = secure_filename(f.filename)
                  f.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                  user.Photo = 'profile/'+filename
                db.session.commit()
                return redirect(f'/profile/{user.Account_No}')
            return render_template('edituser.html',User=user)
        if auth:
           admin = Admin.query.filter_by(Login_id=auth).first()
           agent = Agent.query.filter_by(ID_Number=auth).first()
           if admin:
               Auth=admin
           else:
               Auth = agent 
           if Auth:
                if Auth.Login:
                    if request.method == 'POST':
                        user.Name = request.form['name']
                        user.Phone= request.form['phone']
                        user.Email = request.form['email']
                        user.Aadhar = request.form['aadhar']
                        user.Pan = request.form['pan']
                        user.Amount = float(request.form['amount'])
                        user.Balance = float(request.form['balance'])
                        user.Intrate = float(request.form['intrate'])
                        user.Pay_Date = request.form['pay']
                        user.Loan_Date = request.form['loan']
                        user.Intrest = user.Amount * user.Intrate /100
                        user.Loan_id = request.form['loanid']
                        f = request.files['photo']
                        if f :
                           filename = secure_filename(f.filename)
                           f.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                           user.Photo = 'profile/'+filename
                        db.session.commit()
                        try:
                           return redirect(f'/profile/{Auth.ID_Number}')
                        except Exception as e:
                           return redirect(f'/profile/{Auth.Login_id}')
                    return render_template('edituser.html',User=user,auth=True)
    return redirect('/login/user')

@app.route('/addloan/<id>',methods=['GET','POST'])
def addloan(id):
    admin = Admin.query.filter_by(Login_id=id).first()
    if admin.Login:
        if request.method == 'POST':
            title = request.form['title']
            thumb= request.form['thumb']
            banner = request.form['banner']
            descrip = request.form['discrip']
            fea = request.form['fea']
            ter = request.form['t&c']
            elig = request.form['elig']
            repay = request.form['repay']
            if Loan.query.filter_by(Title=title,Description=descrip,Features=fea,Terms=ter,Eligibilty=elig,Repayment=repay).first():
                flash("Loan is already exist!!")
                return redirect(f'/profile/{id}')
            else:
                while True :
                  loanid =''.join(random.choices(string.ascii_uppercase + string.digits,k=10))
                  demo = Loan.query.filter_by(Loan_id = loanid).first()
                  if demo :
                    continue
                  else :
                    break
                create=Loan(Loan_id=loanid,Title=title,Description=descrip,Thumbnail=thumb,Banner=banner,Features=fea,Terms=ter,Eligibilty=elig,Repayment=repay)
                db.session.add(create)
                db.session.commit()
                flash("Loan added Successfully")
                return redirect(f'/profile/{admin.Login_id}')
        return render_template('addloan.html')
    else:
        return redirect('/login/admin')

@app.route('/loanpay/<auth>',methods=['GET','POST'])
def loanpayment(auth):
    login=False
    user=False
    alluser = User.query.all()
    if request.method == 'POST':
        if request.form['logid']:
            logid=request.form['logid']
            passw = request.form['pass']
            if Agent.query.filter_by(ID_Number=logid,Password=passw).first():
                login=True
        elif request.form['ac_no']:
            ac= request.form['ac_no']
            amount= float(request.form['amount'])
            user = User.query.filter_by(Account_No=ac).first()
            if user.Intrest >= amount:
                user.Intrest = user.Intrest - amount
            else:
                user.Balance = user.Amount -(user.Intrest-amount)
                user.Intrest = 0
            user.Payment = datetime.date.today()
            db.session.commit()
            flash("Loan Payment Successfully")
            return redirect(f'/profile/{auth}')
        return render_template('loanpay.html',Login=login,Alluser=alluser)
    return render_template('loanpay.html',Login=login,Alluser=alluser)

if __name__ == '__main__':
    app.run(debug=False)