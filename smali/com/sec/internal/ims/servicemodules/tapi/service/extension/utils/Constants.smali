.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final C14N_ALGORITHMS:[Ljava/lang/String;

.field public static final C14N_ALGORITHM_XML11:Ljava/lang/String; = "http://www.w3.org/2006/12/xml-c14n11"

.field public static final C14N_ALGORITHM_XML_LOCAL:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final DIGEST_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_ALGORITHM_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final DIGEST_ALGORITHM_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha256"

.field public static final DIGITAL_SIGN_NS:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field public static final IARI_AUTH_ELT:Ljava/lang/String; = "iari-authorisation"

.field public static final IARI_AUTH_NS:Ljava/lang/String; = "http://gsma.com/ns/iari-authorisation#"

.field public static final IARI_ELT:Ljava/lang/String; = "iari"

.field public static final ID:Ljava/lang/String; = "Id"

.field public static final PACKAGE_NAME_ELT:Ljava/lang/String; = "package-name"

.field public static final PACKAGE_SIGNER_ELT:Ljava/lang/String; = "package-signer"

.field public static final SELF_SIGNED_IARI_PREFIX:Ljava/lang/String; = "urn:urn-7:3gpp-application.ims.iari.rcs.ext.ss."

.field public static final SIGNATURE_ELT:Ljava/lang/String; = "Signature"

.field public static final SIG_ALGORITHM_RSAwithSHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

.field public static final SIG_PROPERTY_IDENTIFIER_NAME:Ljava/lang/String; = "Identifier"

.field public static final SIG_PROPERTY_NS:Ljava/lang/String; = "http://www.w3.org/2009/xmldsig-properties"

.field public static final SIG_PROPERTY_PROFILE_NAME:Ljava/lang/String; = "Profile"

.field public static final SIG_PROPERTY_PROFILE_URI:Ljava/lang/String; = "http://gsma.com/ns/iari-authorisation-profile"

.field public static final SIG_PROPERTY_ROLE_NAME:Ljava/lang/String; = "Role"

.field public static final SIG_PROPERTY_ROLE_SELF_SIGNED:Ljava/lang/String; = "http://gsma.com/ns/iari-authorisation-role-standalone"

.field public static final SIG_PROPERTY_URI_NAME:Ljava/lang/String; = "URI"

.field public static final TAPI_PERMISSION:Ljava/lang/String; = "com.gsma.services.permission.RCS"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "http://www.w3.org/2006/12/xml-c14n11"

    const-string v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/Constants;->C14N_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method
