.class public final enum Lcom/sec/internal/constants/ims/os/VoPsIndication;
.super Ljava/lang/Enum;
.source "VoPsIndication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/os/VoPsIndication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 3

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/os/VoPsIndication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 16
    invoke-static {}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->$values()[Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static translateVops(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 36
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 38
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0

    .line 41
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0
.end method

.method public static translateVops(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 0

    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    .line 31
    :goto_0
    invoke-static {p0}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    return-object p0
.end method

.method public static translateVops(ZZ)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 48
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->$VALUES:[Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/os/VoPsIndication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/os/VoPsIndication;

    return-object v0
.end method
