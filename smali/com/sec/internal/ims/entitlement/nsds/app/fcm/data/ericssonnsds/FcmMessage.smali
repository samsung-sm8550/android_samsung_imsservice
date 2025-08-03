.class public abstract Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.super Ljava/lang/Object;
.source "FcmMessage.java"


# instance fields
.field protected transient origMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract broadcastFcmMessage(Landroid/content/Context;)V
.end method

.method protected deriveMsisdnFromRecipientUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setOrigMessage(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->origMessage:Ljava/lang/String;

    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
