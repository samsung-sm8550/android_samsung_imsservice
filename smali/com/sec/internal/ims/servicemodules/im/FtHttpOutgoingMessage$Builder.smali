.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.source "FtHttpOutgoingMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .locals 1

    .line 147
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object p0

    return-object p0
.end method
