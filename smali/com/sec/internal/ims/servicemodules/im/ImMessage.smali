.class public Lcom/sec/internal/ims/servicemodules/im/ImMessage;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.source "ImMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mGroupCcListUri:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;-><init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    .line 37
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    return-void
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2-IA;)V

    return-object v0
.end method


# virtual methods
.method public getGroupCcListUri()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    return-object p0
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 0

    .line 46
    const-string p0, "IM"

    return-object p0
.end method

.method public onReceived()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    return-void
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendMessageDone() : mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBody = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq p1, p2, :cond_1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSentTimestamp(J)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSendMessageResponseTimeout()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    return-void
.end method

.method public setGroupCcListUri(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 1

    .line 82
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 85
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    goto :goto_1

    .line 87
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImMessage ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
