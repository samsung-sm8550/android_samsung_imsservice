.class public final enum Lcom/sec/internal/constants/ims/os/EmcBsIndication;
.super Ljava/lang/Enum;
.source "EmcBsIndication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/os/EmcBsIndication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/os/EmcBsIndication;

.field public static final enum NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

.field public static final enum SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 3

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 14
    invoke-static {}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->$values()[Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static translateEmcbs(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 21
    sget-object p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 23
    sget-object p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object p0

    .line 25
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object p0
.end method

.method public static translateEmcbs(Z)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    sget-object p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/os/EmcBsIndication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    return-object v0
.end method
