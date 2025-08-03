.class public Lcom/sec/internal/ims/translate/PersistentMessageTranslator;
.super Lcom/sec/internal/ims/translate/EucMessageTranslator;
.source "PersistentMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/translate/EucMessageTranslator;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/ims/translate/EucMessageTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;->request()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/translate/EucMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p0

    return-object p0
.end method
