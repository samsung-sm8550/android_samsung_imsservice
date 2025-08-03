.class public final enum Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
.super Ljava/lang/Enum;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

.field public static final enum FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

.field public static final enum IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

.field public static final enum TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 3

    .line 156
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 157
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    const-string v1, "TRIGGERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->$values()[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 1

    .line 156
    const-class v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 1

    .line 156
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-object v0
.end method
