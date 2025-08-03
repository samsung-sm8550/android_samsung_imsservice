.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mRawHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 1

    .line 265
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;)V

    return-object v0
.end method

.method public rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->mRawHandle:Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    return-object p0
.end method
