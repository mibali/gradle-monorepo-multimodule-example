# package name
jp.co.nri.sample.api.utils
# class name (physical)
SampleUtils
# method definition
## Method name (physical)
checkCommon
## Method name (logical)
Check common information
## Exception
none
## Scope/Modifier
public
## Annotation
none
## argument
### Name of argument 1
commonEntity
### Type name of argument 1
jp.co.nri.sample.api.entity.CommonEntity
### Description of argument 1
common entity
## Return value
### Return value type name
jp.co.nri.sample.api.dto.ErrorDto
### Return value description
Error Dto
## Outline of processing
- generate an error Dto and set the error flag (errorFlg) to false
- Check each field of common entity
    - When `checkClass` is "1":
        - Perform the following checks for the family name (`nameSei`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Family name is not entered."
            - Character count check (50 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Family name exceeds 50 characters."
        - Perform the following checks for the given name (`nameMei`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Given name is not entered."
            - Character count check (50 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Given name exceeds 50 characters."
        - Perform the following checks for the given name - surname Kana (`nameSeiKana`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message(`errorMessage`) to "Given name - surname Kana is not entered."
            - Character count check (100 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Given name - surname Kana exceeds 100 characters."
        - Perform the following checks for the given name - first name Kana (`nameMeiKana`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Given name - first name Kana is not entered."
            - Character count check (100 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Given name - first name Kana exceeds 100 characters."
        - Perform the following checks for sex (`sex`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Sex is not entered."
            - Category value check (refer to ## About Category Values):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Sex has an invalid value."
        - Perform the following checks for date of birth (`birthday`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Date of birth is not entered."
        - Perform the following checks for telephone number (`tel`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number is not entered."
            - Character count check (11 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number exceeds 11 characters."
            - Character type check (half-width numbers):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number contains characters other than half-width numbers."
        - Perform the following checks for mail address (`mailAddress`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address is not entered."
            - Character count check (255 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address exceeds 255 characters."
            - Character type check (characters allowed in an email address):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address contains invalid characters."
        - Perform the following checks for postal code (`postalCode`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code is not entered."
            - Character count check (7 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code exceeds 7 characters."
            - Character type check (half-width numbers):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code contains characters other than half-width numbers."
        - Perform the following checks for address1 (`address1`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address1 is not entered."
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address1 exceeds 30 characters."
        - Perform the following checks for address2 (`address2`):
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address2 is not entered."
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address2 exceeds 30 characters."
        - Perform the following checks for address3 (`address3`):
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address3 exceeds 30 characters."
    - When `checkClass` is "2":
        - In the case of company name (`companyName`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company name is not entered."
            - Character count check (50 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company name exceeds 50 characters."
        - For the company name Kana (`companyNameKana`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company name Kana is not entered."
            - Character count check (100 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company name Kana exceeds 100 characters."
        - For company class (`companyClass`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company class is not entered."
            - Category value check (refer to ## About Category Values):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company class has an invalid value."
        - For company establishment date (`companyBirthday`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Company establishment date is not entered."
        - For telephone number (`tel`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number is not entered."
            - Character count check (11 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number exceeds 11 characters."
            - Character type check (half-width digits):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Telephone number contains non-half-width digits."
        - For mail address (`mailAddress`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address is not entered."
            - Character count check (255 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address exceeds 255 characters."
            - Character type check (characters permitted in an email address):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Mail address contains invalid characters."
        - For postal code (`postalCode`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code is not entered."
            - Character count check (7 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code exceeds 7 characters."
            - Character type check (half-width digits):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Postal code contains non-half-width digits."
        - For address1 (`address1`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address1 is not entered."
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address1 exceeds 30 characters."
        - For address2 (`address2`), perform the following checks:
            - Mandatory check:
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address2 is not entered."
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address2 exceeds 30 characters."
        - For address3 (`address3`), perform the following checks:
            - Character count check (30 characters):
                - If an error occurs, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Address3 exceeds 30 characters."
    - When `checkClass` is "3":
        - Perform the following checks for `productName`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product name is not entered."
            - Character count check (50 characters):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product name exceeds 50 characters."
        - Perform the following checks for `productNameKana`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product name Kana is not entered."
            - Character count check (50 characters):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product name Kana exceeds 50 characters."
        - Perform the following checks for `price`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Price in yen is not entered."
            - Half-width number check (10 digits):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Please enter a number within 10 digits for the price in yen."
        - Perform the following checks for `priceDoller`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Price in dollars is not entered."
            - Half-width number check (10 digits):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Please enter a number within 10 digits for the price in dollars."
        - Perform the following checks for `productType`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product type is not entered."
            - Category value check (refer to ## About Category Values):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Product type has an invalid value."
        - Perform the following checks for `size`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Size is not entered."
        - Perform the following checks for `weight`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Weight is not entered."
            - Half-width number check (10 digits):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Please enter a number within 10 digits for the weight."
        - Perform the following checks for `useType`:
            - Character count check (255 characters):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Use type exceeds 255 characters."
        - Perform the following checks for `color`:
            - Mandatory check:
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Color is not entered."
            - Character count check (255 characters):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Color exceeds 255 characters."
        - Perform the following checks for `note`:
            - Character count check (255 characters):
                - If there is an error, set the error flag (`errorFlg`) to true and set the error message (`errorMessage`) to "Note exceeds 255 characters."
- Return the error DTO.
## About Category Values
 
- Sex
  - 1: Male
  - 2: Female
 
- Company Classification
  - 1: Individual
  - 2: Corporation
