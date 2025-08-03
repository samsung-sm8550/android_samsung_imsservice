.class public Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"


# static fields
.field public static final ACCOUNTS:I = 0x9

.field public static final ACCOUNT_ID:I = 0x2f

.field public static final ACTIVATE_SIM_DEVICE:I = 0x1e

.field public static final ACTIVE_ACCOUNT:I = 0x7

.field public static final ACTIVE_LINES:I = 0x8

.field public static final ACTIVE_LINES_WITH_SERVICES:I = 0x1d

.field public static final ALL_LINES:I = 0x2d

.field public static final ALL_LINES_INTERNAL:I = 0x4d

.field public static final ALL_LINES_IN_ACTIVE_ACCOUNT:I = 0x2c

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BINDING_SERVICE:I = 0x52

.field public static final DEACTIVATE_SIM_DEVICE:I = 0x1f

.field public static final DEVICES:I = 0x2

.field public static final DEVICE_CONFIG:I = 0x27

.field public static final DEVICE_CONFIG_ELEMENT:I = 0x3e

.field public static final DEVICE_ID_LINE_ID_SERVICES:I = 0x6

.field public static final DEVICE_ID_SERVICES:I = 0x2a

.field public static final DEVICE_ID_SET_PRIMARY:I = 0x1a

.field public static final DEVICE_NAME:I = 0x4e

.field public static final DEVICE_OWN_ACTIVATION_STATUS:I = 0x1c

.field public static final DEVICE_OWN_LOGIN_STATUS:I = 0x29

.field public static final DEVICE_OWN_NSDS_SERVICE_STATUS:I = 0x3d

.field public static final DEVICE_OWN_READY_STATUS:I = 0x3c

.field public static final DEVICE_PROVISIONED:I = 0x4f

.field public static final DEVICE_PUSH_TOKEN:I = 0x43

.field public static final DISABLE_ACTIVE_ACCOUNT:I = 0x30

.field public static final DISABLE_CAB:I = 0x32

.field public static final DOWNLOAD_ALL_CONTACTS:I = 0x18

.field public static final ENABLE_CAB:I = 0x31

.field public static final ENTITLEMENT_URL:I = 0x49

.field public static final GCM_TOKENS:I = 0x4a

.field public static final INACTIVE_LINES_WITH_SERVICES:I = 0x46

.field public static final LINES:I = 0x0

.field public static final LINE_ID_ACTIVATE_SERVICES:I = 0x13

.field public static final LINE_ID_ADD_SERVICES:I = 0x11

.field public static final LINE_ID_DEACTIVATE_SERVICES:I = 0x14

.field public static final LINE_ID_DEVICES:I = 0x2b

.field public static final LINE_ID_REMOVE_SERVICES:I = 0x12

.field public static final NSDS_CONFIGS:I = 0x28

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field public static final RECONNECT_DB:I = 0x51

.field public static final RETRIEVE_AKA_TOKEN:I = 0x50

.field public static final SERVICES:I = 0x3f

.field public static final SIM_SWAP_NSDS_CONFIGS:I = 0x47

.field public static final SIM_SWAP_SERVICES:I = 0x48

.field public static final UPDATE_E911_ADDRESS:I = 0x2e

.field public static final UPLOAD_ALL_CONTACTS:I = 0x17

.field public static final UPLOAD_UPDATED_CONTACT:I = 0x19

.field public static final VOWIFI_TOGGLE_OFF:I = 0x21

.field public static final VOWIFI_TOGGLE_ON:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "content://com.samsung.ims.nsds.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
