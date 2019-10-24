package com.lti.finance.entity;



import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
	@Entity
	@Table(name="CONSUMER")
	public class Consumer {
		@Id
		@Column(name="USER_NAME ")
	    private String username ;
		
		@Column(name="C_NAME ")
		private String cname ;
		
		@Column(name="DOB ")
		private String dob ;
		
		@Column(name="EMAIL_ID ")
		private String email ;
		
		@Column(name="PASSWORD ")
		private String password ;
		
		@Column(name="ADDRESS ")
		private String address ;
		
		@Column(name="CARD_TYPE  ")
		private String cardtype  ;
		
		@Column(name="IFSC_CODE  ")
		private String ifsccode  ;
		
		@Column(name="BANK_NAME  ")
		private String bankname  ;
		
		@Column(name="PHONE_NO ")
		private int phoneno ;
		
		@Column(name="AC_NO ")
		private int accno ;
		
		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getCname() {
			return cname;
		}

		public void setCname(String cname) {
			this.cname = cname;
		}

		public String getDob() {
			return dob;
		}

		public void setDob(String dob) {
			this.dob = dob;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getCardtype() {
			return cardtype;
		}

		public void setCardtype(String cardtype) {
			this.cardtype = cardtype;
		}

		public String getIfsccode() {
			return ifsccode;
		}

		public void setIfsccode(String ifsccode) {
			this.ifsccode = ifsccode;
		}

		public String getBankname() {
			return bankname;
		}

		public void setBankname(String bankname) {
			this.bankname = bankname;
		}

		public int getPhoneno() {
			return phoneno;
		}

		public void setPhoneno(int phoneno) {
			this.phoneno = phoneno;
		}

		public int getAccno() {
			return accno;
		}

		public void setAccno(int accno) {
			this.accno = accno;
		}
		@Override
		public String toString() {
			return "Consumer [username=" + username + ", cname=" + cname + ", dob=" + dob + ", email=" + email
					+ ", password=" + password + ", address=" + address + ", cardtype=" + cardtype + ", ifsccode="
					+ ifsccode + ", bankname=" + bankname + ", phoneno=" + phoneno + ", accno=" + accno + "]";
		}

		public Consumer(String username, String cname, String dob, String email, String password, String address,
				String cardtype, String ifsccode, String bankname, int phoneno, int accno) {
			super();
			this.username = username;
			this.cname = cname;
			this.dob = dob;
			this.email = email;
			this.password = password;
			this.address = address;
			this.cardtype = cardtype;
			this.ifsccode = ifsccode;
			this.bankname = bankname;
			this.phoneno = phoneno;
			this.accno = accno;
		}

		public Consumer() {
			super();
		}
		
		
		
	}



