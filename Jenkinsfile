pipeline {
   agent any
   parameters {
             booleanParam(name: 'FOR_NEW_USERS', defaultValue: 'false', description: 'NEW_USER_INSTALL_SOFTWARES')
    }
   stages {
      stage('install prerequisite')
         when{
              expression { env.FOR_NEW_USERS == 'true' }

         }
         steps {
              script {
                 def proc ='./prerequesites.sh'.execute()

                }     
	}
}
}
