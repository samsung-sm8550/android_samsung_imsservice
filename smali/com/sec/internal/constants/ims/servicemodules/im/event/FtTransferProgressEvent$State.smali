.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
.super Ljava/lang/Enum;
.source "FtTransferProgressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

.field public static final enum CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

.field public static final enum COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

.field public static final enum INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

.field public static final enum TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .locals 4

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const-string v1, "TRANSFERRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->INTERRUPTED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    .line 27
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const-string v1, "CANCELED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    .line 28
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    .line 24
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    return-object v0
.end method
