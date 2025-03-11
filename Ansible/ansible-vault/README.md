1. Clone the repo
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/ebf9999c-32e1-4cef-951b-1ba7d587312e" />

2. create a yml file either using "touch" or "ansible-vault create <filename>.yml" & update your sensitive data
   <img width="738" alt="image" src="https://github.com/user-attachments/assets/f19d5f6f-cb82-42f1-8d3b-a79d75aa7ae0" />

3. If manually creating the yml file. Please encrypt it & create your vault password
   <img width="765" alt="image" src="https://github.com/user-attachments/assets/63bd1906-242a-4b2d-8efd-f2061b728e8c" />

4. Once yml file was created. Please upadte the input in host.ini file and check the connectivity using
   "ansible -i ./host.ini -m ping linux --ask-vault-pass"

5. Once connectivity success. Please run "ansible-playbook -i host.ini ansible-yml --ask-vault-pass"

   (or)

   Create a .txt file in a centralized repo which you have access alone & update your vault password in it.
   
   clone the centralized repo and run "ansible-playbook -i ../ajk/host.ini ../ajk/ansible.yml --vault-password-file=./ajk.txt"
   NOTE: Please update the path of host.ini, ansible.yml & .txt file based on your env

