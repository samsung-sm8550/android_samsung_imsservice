.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDataUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mDataUrl:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 1

    .line 180
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p0

    return-object p0
.end method

.method public dataUrl(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mDataUrl:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    return-object p0
.end method
