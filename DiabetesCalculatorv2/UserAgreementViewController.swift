//
//  UserAgreementViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/29/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class UserAgreementViewController: UIViewController {

    @IBOutlet weak var licenseAgreement: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        super.viewWillAppear(true)
        licenseAgreement.text = userAgreement

       
    }
    
    var userAgreement = """
    END USER LICENSE AGREEMENT

    Last updated 04/28/2020


     
    Diabetes Calculator is licensed to You (End-User) by Diabetes Calculator, located at 359 Long Hill Road East, Briarcliff Manor, New York 10510, United States (hereinafter: Licensor), for use only under the terms of this License Agreement.
     
    By downloading the Application from the Apple AppStore, and any update thereto (as permitted by this License Agreement), You indicate that You agree to be bound by all of the terms and conditions of this License Agreement, and that You accept this License Agreement.
     
    The parties of this License Agreement acknowledge that Apple is not a Party to this License Agreement and is not bound by any provisions or obligations with regard to the Application, such as warranty, liability, maintenance and support thereof. Diabetes Calculator, not Apple, is solely responsible for the licensed Application and the content thereof.
     
    This License Agreement may not provide for usage rules for the Application that are in conflict with the latest App Store Terms of Service. Diabetes Calculator acknowledges that it had the opportunity to review said terms and this License Agreement is not conflicting with them.

    All rights not expressly granted to You are reserved.


    1. THE APPLICATION
     
    Diabetes Calculator (hereinafter: Application) is a piece of software created to Help type 1 diabetics calculate boluses. - and customized for Apple mobile devices. It is used to Calculate insulin doses..

    The Application is not tailored to comply with industry-specific regulations (Health Insurance Portability and Accountability Act (HIPAA), Federal Information Security Management Act (FISMA), etc.), so if your interactions would be subjected to such laws, you may not use this Application. You may not use the Application in a way that would violate the Gramm-Leach-Bliley Act (GLBA).
    

    2. SCOPE OF LICENSE
     
    2.1  You are given a non-transferable, non-exclusive, non-sublicensable license to install and use the Licensed Application on any Apple-branded Products that You (End-User) own or control and as permitted by the Usage Rules set forth in this section and the App Store Terms of Service, with the exception that such licensed Application may be accessed and used by other accounts associated with You (End-User, The Purchaser) via Family Sharing or volume purchasing.

    2.2  This license will also govern any updates of the Application provided by Licensor that replace, repair, and/or supplement the first Application, unless a separate license is provided for such update in which case the terms of that new license will govern.

    2.3  You may not share or make the Application available to third parties (unless to the degree allowed by the Apple Terms and Conditions, and with Diabetes Calculator's prior written consent), sell, rent, lend, lease or otherwise redistribute the Application.

    2.4  You may not reverse engineer, translate, disassemble, integrate, decompile, integrate, remove, modify, combine, create derivative works or updates of, adapt, or attempt to derive the source code of the Application, or any part thereof (except with Diabetes Calculator's prior written consent).

    2.5  You may not copy (excluding when expressly authorized by this license and the Usage Rules) or alter the Application or portions thereof. You may create and store copies only on devices that You own or control for backup keeping under the terms of this license, the App Store Terms of Service, and any other terms and conditions that apply to the device or software used. You may not remove any intellectual property notices. You acknowledge that no unauthorized third parties may gain access to these copies at any time.

    2.6  Violations of the obligations mentioned above, as well as the attempt of such infringement, may be subject to prosecution and damages.

    2.7  Licensor reserves the right to modify the terms and conditions of licensing.

    2.8  Nothing in this license should be interpreted to restrict third-party terms. When using the Application, You must ensure that You comply with applicable third-party terms and conditions.
       

    3. TECHNICAL REQUIREMENTS

    3.1  Licensor recommends using the latest version of the firmware.

    3.2  Licensor attempts to keep the Application updated so that it complies with modified/new versions of the firmware and new hardware. You are not granted rights to claim such an update.

    3.3  You acknowledge that it is Your responsibility to confirm and determine that the app end-user device on which You intend to use the Application satisfies the technical  specifications mentioned above.

    3.4  Licensor reserves the right to modify the technical specifications as it sees appropriate at any time.


    4. MAINTENANCE AND SUPPORT

    4.1  The Licensor is solely responsible for providing any maintenance and support services for this licensed Application. You can reach the Licensor at the email address listed in the App Store Overview for this licensed Application.

    4.2  Diabetes Calculator and the End-User acknowledge that Apple has no obligation whatsoever to furnish any maintenance and support services with respect to the licensed Application.


    5. LIABILITY

    5.1  Licensor's responsibility in the case of violation of obligations and tort shall be limited to intent and gross negligence. Only in case of a breach of essential contractual duties (cardinal obligations), Licensor shall also be liable in case of slight negligence. In any case, liability shall be limited to the foreseeable, contractually typical damages. The limitation mentioned above does not apply to injuries to life, limb, or health.

    5.2  Licensor takes no accountability or responsibility for any damages caused due to a breach of duties according to Section 2 of this Agreement. To avoid data loss, You are required to make use of backup functions of the Application to the extent allowed by applicable third-party terms and conditions of use. You are aware that in case of alterations or manipulations of the Application, You will not have access to licensed Application.

    5.3  Licensor takes no accountability and responsibility in case of miscalculated dose, and any medical issues that result..


    6. WARRANTY

    6.1  Licensor warrants that the Application is free of spyware, trojan horses, viruses, or any other malware at the time of Your download. Licensor warrants that the Application works as described in the user documentation.

    6.2  No warranty is provided for the Application that is not executable on the device, that has been unauthorizedly modified, handled inappropriately or culpably, combined or installed with inappropriate hardware or software, used with inappropriate accessories, regardless if by Yourself or by third parties, or if there are any other reasons outside of Diabetes Calculator's sphere of influence that affect the executability of the Application.

    6.3  You are required to inspect the Application immediately after installing it and notify Diabetes Calculator about issues discovered without delay by e-mail provided in Product Claims. The defect report will be taken into consideration and further investigated if it has been mailed within a period of one (1) days after discovery.

    6.4  If we confirm that the Application is defective, Diabetes Calculator reserves a choice to remedy the situation either by means of solving the defect or substitute delivery.

    6.5  In the event of any failure of the Application to conform to any applicable warranty, You may notify the App-Store-Operator, and Your Application purchase price will be refunded to You. To the maximum extent permitted by applicable law, the App-Store-Operator will have no other warranty obligation whatsoever with respect to the App, and any other losses, claims, damages, liabilities, expenses and costs attributable to any negligence to adhere to any warranty.
               
    6.6  If the user is an entrepreneur, any claim based on faults expires after a statutory period of limitation amounting to twelve (12) months after the Application was made available to the user. The statutory periods of limitation given by law apply for users who are consumers.

               
    7. PRODUCT CLAIMS
     
    Diabetes Calculator and the End-User acknowledge that Diabetes Calculator, and not Apple, is responsible for addressing any claims of the End-User or any third party relating to the licensed Application or the End-User’s possession and/or use of that licensed Application, including, but not limited to:
     
    (i) product liability claims;
               
    (ii) any claim that the licensed Application fails to conform to any applicable legal or regulatory requirement; and
               
    (iii) claims arising under consumer protection, privacy, or similar legislation, including in connection with Your Licensed Application’s use of the HealthKit and HomeKit.

       
    8. LEGAL COMPLIANCE
        
    You represent and warrant that You are not located in a country that is subject to a U.S. Government embargo, or that has been designated by the U.S. Government as a "terrorist supporting" country; and that You are not listed on any U.S. Government list of prohibited or restricted parties.

       
    9. CONTACT INFORMATION
         
    For general inquiries, complaints, questions or claims concerning the licensed Application, please contact:
         
    Henry Anderson
    359 Long Hill Road East
    Briarcliff Manor, NY 10510
    United States
    handerson5486@gmail.com


    10. TERMINATION
        
    The license is valid until terminated by Diabetes Calculator or by You. Your rights under this license will terminate automatically and without notice from Diabetes Calculator if You fail to adhere to any term(s) of this license. Upon License termination, You shall stop all use of the Application, and destroy all copies, full or partial, of the Application.


    11. THIRD-PARTY TERMS OF AGREEMENTS AND BENEFICIARY
     
    Diabetes Calculator represents and warrants that Diabetes Calculator will comply with applicable third-party terms of agreement when using licensed Application.
     
    In Accordance with Section 9 of the "Instructions for Minimum Terms of Developer's End-User License Agreement," Apple and Apple's subsidiaries shall be third-party beneficiaries of this End User License Agreement and - upon Your acceptance of the terms and conditions of this license agreement, Apple will have the right (and will be deemed to have accepted the right) to enforce this End User License Agreement against You as a third-party beneficiary thereof.
     

    12. INTELLECTUAL PROPERTY RIGHTS
     
    Diabetes Calculator and the End-User acknowledge that, in the event of any third-party claim that the licensed Application or the End-User's possession and use of that licensed Application infringes on the third party's intellectual property rights, Diabetes Calculator, and not Apple, will be solely responsible for the investigation, defense, settlement and discharge or any such intellectual property infringement claims.
     

    13. APPLICABLE LAW
     
    This license agreement is governed by the laws of the State of New York excluding its conflicts of law rules.
     

    14. MISCELLANEOUS
              
    14.1  If any of the terms of this agreement should be or become invalid, the validity of the remaining provisions shall not be affected. Invalid terms will be replaced by valid ones formulated in a way that will achieve the primary purpose.
                 
    14.2  Collateral agreements, changes and amendments are only valid if laid down in writing. The preceding clause can only be waived in writing.

    """
   

}
