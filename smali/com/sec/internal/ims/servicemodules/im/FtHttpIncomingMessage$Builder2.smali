.class Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;
.super Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
        "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;
    .locals 0

    .line 0
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;->self()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;

    move-result-object p0

    return-object p0
.end method
