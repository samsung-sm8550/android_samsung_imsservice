.class public Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;
.super Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;
.source "ImsSecChannelCallback.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSecChannelCallback"


# instance fields
.field private final mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    return-void
.end method


# virtual methods
.method public receive(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 19
    const-string/jumbo v0, "receive"

    const-string v1, "ImsSecChannelCallback"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IpcUtil;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->processResponse([BI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
