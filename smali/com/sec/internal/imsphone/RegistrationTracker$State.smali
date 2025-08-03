.class final enum Lcom/sec/internal/imsphone/RegistrationTracker$State;
.super Ljava/lang/Enum;
.source "RegistrationTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/imsphone/RegistrationTracker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum AUTHORIZING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum DE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field public static final enum RE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/imsphone/RegistrationTracker$State;
    .locals 6

    .line 24
    sget-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v2, Lcom/sec/internal/imsphone/RegistrationTracker$State;->AUTHORIZING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v3, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v4, Lcom/sec/internal/imsphone/RegistrationTracker$State;->RE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v5, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/imsphone/RegistrationTracker$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "DE_REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 26
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "REGISTERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 27
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "AUTHORIZING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->AUTHORIZING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 28
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "REGISTERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 29
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "RE_REGISTERING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->RE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 30
    new-instance v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v1, "DE_REGISTERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/RegistrationTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 24
    invoke-static {}, Lcom/sec/internal/imsphone/RegistrationTracker$State;->$values()[Lcom/sec/internal/imsphone/RegistrationTracker$State;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->$VALUES:[Lcom/sec/internal/imsphone/RegistrationTracker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/imsphone/RegistrationTracker$State;
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/RegistrationTracker$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/imsphone/RegistrationTracker$State;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->$VALUES:[Lcom/sec/internal/imsphone/RegistrationTracker$State;

    invoke-virtual {v0}, [Lcom/sec/internal/imsphone/RegistrationTracker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/imsphone/RegistrationTracker$State;

    return-object v0
.end method
