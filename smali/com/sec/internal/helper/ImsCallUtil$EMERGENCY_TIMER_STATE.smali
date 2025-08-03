.class public final enum Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;
.super Ljava/lang/Enum;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

.field public static final enum CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

.field public static final enum EXPIRED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

.field public static final enum MAX:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

.field public static final enum STARTED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;
    .locals 4

    .line 93
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->STARTED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->EXPIRED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->MAX:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 94
    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->STARTED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    const-string v1, "EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->EXPIRED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    new-instance v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    const-string v1, "MAX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->MAX:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    .line 93
    invoke-static {}, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->$values()[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->$VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;
    .locals 1

    .line 93
    const-class v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;
    .locals 1

    .line 93
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->$VALUES:[Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    return-object v0
.end method
