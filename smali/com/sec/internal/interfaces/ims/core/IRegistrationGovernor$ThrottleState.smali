.class public final enum Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
.super Ljava/lang/Enum;
.source "IRegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

.field public static final enum IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

.field public static final enum PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

.field public static final enum TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .locals 3

    .line 33
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->IDLE:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    const-string v1, "TEMPORARY_THROTTLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->TEMPORARY_THROTTLED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    const-string v1, "PERMANENTLY_STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    .line 33
    invoke-static {}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->$values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
    .locals 1

    .line 33
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    return-object v0
.end method
