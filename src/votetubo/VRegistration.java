/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package votetubo;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author DEBAJYOTI
 */
public class VRegistration extends javax.swing.JFrame {

    /**
     * Creates new form VRegistration
     */
    public VRegistration() {
        initComponents();
      GetElections();
        //DisplayVoters();
    }
     Connection Con = null;
    // PreparedStatement pst = null ; 
     ResultSet Rs=null;
     Statement St=null;
     private void GetElections(){
        try {
             Con =DriverManager.getConnection("jdbc:mysql://localhost:3306/voting_db","root","");
             St=Con.createStatement();
             
             String Query="select * from  voting_tb ";
              Rs=St.executeQuery(Query);
              while(Rs.next()){
              String ElctID=Rs.getString("Eid");
              Vele.addItem(ElctID);
              
              
              
              }
              //JOptionPane.showMessageDialog(this,"Election Deleeted Successfully");
            //  DisplayEle();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, e);
        
        } 
        }
     int VId;
    Statement st1=null;
    ResultSet rs1=null;
    
    private void VoterCount(){
        try {
            st1=Con.createStatement();
           rs1=st1.executeQuery("select MAx(Vid)from voters_tbl");
           rs1.next();
           VId=rs1.getInt(1)+1 ;
        } catch (Exception e) {
        }
    }
    
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        addBtn = new javax.swing.JButton();
        Editbtn = new javax.swing.JButton();
        DeletBtn = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel6 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        Vname = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        Vage = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        Vgen = new javax.swing.JComboBox<>();
        jLabel8 = new javax.swing.JLabel();
        Vele = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        Vpass = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        addBtn1 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        addBtn.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        addBtn.setText("Add");
        addBtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                addBtnMouseClicked(evt);
            }
        });
        addBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addBtnActionPerformed(evt);
            }
        });

        Editbtn.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        Editbtn.setText("Edit");
        Editbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EditbtnActionPerformed(evt);
            }
        });

        DeletBtn.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        DeletBtn.setText("Delet");
        DeletBtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                DeletBtnMouseClicked(evt);
            }
        });
        DeletBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                DeletBtnActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jButton3.setText("Back");
        jButton3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton3MouseClicked(evt);
            }
        });
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel6.setBackground(new java.awt.Color(153, 255, 255));

        jLabel6.setFont(new java.awt.Font("Georgia", 1, 18)); // NOI18N
        jLabel6.setText("ONLINE VOTING MANAGEMENT SYSTEM");

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(144, 144, 144)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 491, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(15, Short.MAX_VALUE))
        );

        jLabel3.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel3.setText("Name ");

        Vname.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VnameActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel4.setText("Adhar No.");

        Vage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VageActionPerformed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel9.setText("Gender");

        Vgen.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        Vgen.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Choose", "Male", "Female", " " }));
        Vgen.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VgenActionPerformed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel8.setText("Election");

        Vele.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        Vele.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VeleActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Georgia", 2, 12)); // NOI18N
        jLabel7.setText("(Last 4 digit)");

        Vpass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VpassActionPerformed(evt);
            }
        });

        jLabel5.setBackground(new java.awt.Color(255, 255, 255));
        jLabel5.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel5.setText("Registration");

        jLabel10.setFont(new java.awt.Font("Georgia", 2, 18)); // NOI18N
        jLabel10.setText("Password");

        addBtn1.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        addBtn1.setText("Submit");
        addBtn1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                addBtn1MouseClicked(evt);
            }
        });
        addBtn1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addBtn1ActionPerformed(evt);
            }
        });

        jButton4.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jButton4.setText("Back");
        jButton4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton4MouseClicked(evt);
            }
        });
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(208, 208, 208)
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(46, 46, 46)
                                .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(26, 26, 26)
                                .addComponent(Vpass, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(49, 49, 49)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel9)
                                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(49, 49, 49))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(37, 37, 37)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(Vele, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Vname, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Vage, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Vgen, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(addBtn1, javax.swing.GroupLayout.PREFERRED_SIZE, 114, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(70, 70, 70))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Vname, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Vage, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(55, 55, 55)
                        .addComponent(Vgen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 19, Short.MAX_VALUE)
                        .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(Vpass, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(34, 34, 34)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Vele, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(46, 46, 46)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(addBtn1, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton4))
                .addGap(31, 31, 31))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void VnameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VnameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_VnameActionPerformed

    private void VageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VageActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_VageActionPerformed

    private void VgenActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VgenActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_VgenActionPerformed

    private void VeleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VeleActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_VeleActionPerformed

    private void VpassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VpassActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_VpassActionPerformed

    private void addBtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_addBtnMouseClicked

        if(Vage.getText().isEmpty() || Vname.getText().isEmpty() || Vele.getSelectedIndex()==-1 ||Vgen.getSelectedIndex()==-1 ){

            JOptionPane.showMessageDialog(this,"Missing Info");

        }else{
            try {
                VoterCount();
                Con =DriverManager.getConnection("jdbc:mysql://localhost:3306/voting_db","root","");
                PreparedStatement Add= Con.prepareStatement("insert into voters_tbl Values(?,?,?,?,?,?)");
                //InputStream img1= new FileInputStream(imgpath);
                Add.setInt(1, VId);
                Add.setString(2,Vname.getText());
                Add.setInt(3,Integer.parseInt(Vage.getText()));
                Add.setString(4, Vpass.getText());
                Add.setString(5,Vgen.getSelectedItem().toString());
                //Add.setBigDecimal(WIDTH, BigDecimal.ONE);
                //   Add.setBlob(5,img1);
                Add.setInt(6,Integer.valueOf(Vele.getSelectedItem().toString()));
                int row=Add.executeUpdate();
                JOptionPane.showMessageDialog(this, "Voter Register Registered ");

                Con.close();
                //DisplayVoters();
            } catch (Exception e) {

                JOptionPane.showMessageDialog(this,e);
            }

        }

        // TODO add your handling code here:
    }//GEN-LAST:event_addBtnMouseClicked

    private void addBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_addBtnActionPerformed

    private void EditbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EditbtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_EditbtnActionPerformed

    private void DeletBtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_DeletBtnMouseClicked
      
    }//GEN-LAST:event_DeletBtnMouseClicked

    private void DeletBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_DeletBtnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_DeletBtnActionPerformed

    private void jButton3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton3MouseClicked
        // TODO add your handling code here:

        new MainMenu().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton3MouseClicked

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void addBtn1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_addBtn1MouseClicked

        if(Vage.getText().isEmpty() || Vname.getText().isEmpty() || Vele.getSelectedIndex()==-1 ||Vgen.getSelectedIndex()==-1 ){

            JOptionPane.showMessageDialog(this,"Missing Info");

        }else{
            try {
                //if("select * from voters_tbl where Vage = "+Vage.getText""){
                    
                
             //   }
                VoterCount();
                Con =DriverManager.getConnection("jdbc:mysql://localhost:3306/voting_db","root","");
                PreparedStatement Add= Con.prepareStatement("insert into voters_tbl Values(?,?,?,?,?,?)");
                //InputStream img1= new FileInputStream(imgpath);
                Add.setInt(1, VId);
                Add.setString(2,Vname.getText());
                Add.setInt(3,Integer.parseInt(Vage.getText()));
                Add.setString(4, Vpass.getText());
                Add.setString(5,Vgen.getSelectedItem().toString());
                //Add.setBigDecimal(WIDTH, BigDecimal.ONE);
                //   Add.setBlob(5,img1);
                Add.setInt(6,Integer.valueOf(Vele.getSelectedItem().toString()));
                int row=Add.executeUpdate();
                JOptionPane.showMessageDialog(this, "Voter Register Registered ");

                Con.close();
              //  DisplayVoters();
            } catch (Exception e) {

                JOptionPane.showMessageDialog(this,e);
            }

        }

        // TODO add your handling code here:
    }//GEN-LAST:event_addBtn1MouseClicked

    private void addBtn1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addBtn1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_addBtn1ActionPerformed

    private void jButton4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton4MouseClicked
        // TODO add your handling code here:

        //new MainMenu().setVisible(true);
        new Login().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton4MouseClicked

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(VRegistration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VRegistration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VRegistration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VRegistration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VRegistration().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton DeletBtn;
    private javax.swing.JButton Editbtn;
    private javax.swing.JTextField Vage;
    private javax.swing.JComboBox<String> Vele;
    private javax.swing.JComboBox<String> Vgen;
    private javax.swing.JTextField Vname;
    private javax.swing.JTextField Vpass;
    private javax.swing.JButton addBtn;
    private javax.swing.JButton addBtn1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel6;
    // End of variables declaration//GEN-END:variables
}