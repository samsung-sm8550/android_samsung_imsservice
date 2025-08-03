.class public Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndPointImpl.java"


# instance fields
.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mPhoneId:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    .line 32
    iput p1, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mPhoneId:I

    return-void
.end method

.method private getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 1

    .line 157
    const-string/jumbo p0, "unknown"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 159
    :cond_0
    const-string p0, "RESTRICTED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 160
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    const-string p0, "Coin line/payphone"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getExternalCallStateList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    return-object p0
.end method

.method public getImsExternalCallStateListener()Lcom/android/ims/internal/IImsExternalCallStateListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object p0
.end method

.method public requestImsExternalCallStateInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance p1, Landroid/telephony/ims/ImsExternalCallState;

    const-string p2, ""

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/Dialog;

    if-nez v0, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    iget v2, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 74
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v2

    :goto_1
    move v4, v2

    goto :goto_2

    .line 78
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :goto_2
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 92
    :cond_4
    const-string/jumbo v5, "tel:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    const-string/jumbo v6, "sip:"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-eq p2, v7, :cond_6

    if-eq p2, v5, :cond_6

    if-ne p2, v6, :cond_7

    .line 102
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    move v8, v1

    .line 107
    :goto_3
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v8, :cond_8

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";displayName="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-eq p2, v7, :cond_9

    if-eq p2, v5, :cond_9

    if-ne p2, v6, :cond_10

    .line 115
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 117
    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v8

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";oir="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v8, "Conference call"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v8, ";cmc_pd_state="

    if-nez v3, :cond_c

    .line 120
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    const/4 v9, 0x5

    if-eq v3, v9, :cond_c

    .line 121
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    const/4 v9, 0x6

    if-ne v3, v9, :cond_a

    goto :goto_4

    .line 123
    :cond_a
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_b

    .line 124
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 125
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 122
    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    :goto_5
    if-eq p2, v5, :cond_e

    if-ne p2, v6, :cond_f

    :cond_e
    move p2, v7

    .line 133
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";cmc_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callslot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 139
    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v8

    .line 140
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v2, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v6

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getState()I

    move-result v7

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :cond_11
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "DE="

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsExternalCallState;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v2

    const v3, 0x186a0

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v3

    const-string v4, "T"

    if-ne v3, v1, :cond_12

    const-string v3, "C"

    goto :goto_7

    :cond_12
    move-object v3, v4

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallHeld()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "H"

    goto :goto_8

    :cond_13
    const-string v3, "A"

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_9

    :cond_14
    const-string v4, "F"

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 148
    :cond_15
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x30000038

    .line 149
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-void
.end method

.method public setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 172
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/Dialog;

    if-nez p2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const-string/jumbo v0, "sip:D2D@samsungims.com;d2d.push"

    .line 185
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 186
    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v6

    .line 187
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v8, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v4

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getState()I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->requestImsExternalCallStateInfo()V

    return-void
.end method
