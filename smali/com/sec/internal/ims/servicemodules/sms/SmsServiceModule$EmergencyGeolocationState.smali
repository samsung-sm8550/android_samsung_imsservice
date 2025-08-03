.class final enum Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;
.super Ljava/lang/Enum;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field public static final enum TIMEOUT:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field public static final enum UPDATED:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field public static final enum UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;
    .locals 4

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATED:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->TIMEOUT:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 227
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const-string v1, "UPDATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const-string v1, "UPDATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATED:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->TIMEOUT:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 226
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->$values()[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;
    .locals 1

    .line 226
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;
    .locals 1

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    return-object v0
.end method
