.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field public static final enum WHEN_STARTS_TYPING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 3

    .line 44
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_STARTS_TYPING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v1, "WHEN_OPENS_CHAT_WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_OPENS_CHAT_WINDOW:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v1, "WHEN_STARTS_TYPING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_STARTS_TYPING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 60
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    const-string v1, "WHEN_PRESSES_SEND_BUTTON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->WHEN_PRESSES_SEND_BUTTON:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 44
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 1

    .line 44
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object v0
.end method
