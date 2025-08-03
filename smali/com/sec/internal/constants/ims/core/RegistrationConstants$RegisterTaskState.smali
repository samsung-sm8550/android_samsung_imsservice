.class public final enum Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
.super Ljava/lang/Enum;
.source "RegistrationConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field public static final enum RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 11

    .line 10
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array/range {v0 .. v10}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "CONFIGURING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "CONFIGURED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "RESOLVING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "RESOLVED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "REGISTERING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "REGISTERED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "DEREGISTERING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v1, "EMERGENCY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 10
    invoke-static {}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->$values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->$VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->$VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-object v0
.end method
