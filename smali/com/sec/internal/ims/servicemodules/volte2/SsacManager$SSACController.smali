.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;
.super Landroid/os/Handler;
.source "SsacManager.java"


# static fields
.field private static final EVT_SSAC_BARRING:I = 0x1

.field private static final MAX_BARRING_FACTOR:I = 0x64

.field public static final STATE_BARRED:Z = true

.field public static final STATE_NOT_BARRED:Z = false


# instance fields
.field mBarredState:[Z

.field mCallType:I

.field mCallTypeName:Ljava/lang/String;

.field mFactor:[I

.field mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field mSsacReset:Z

.field mTime:[I


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 157
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 159
    const-string p2, "Voice Call"

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_0
    const-string p2, "Video Call"

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    .line 163
    :goto_0
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    .line 164
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    .line 165
    new-array p4, p4, [I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    .line 166
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 167
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 p4, 0x64

    invoke-static {p2, p4}, Ljava/util/Arrays;->fill([II)V

    .line 168
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    .line 169
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: evt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SsacManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    const/4 v4, 0x0

    aput-boolean v4, p1, v1

    .line 250
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    if-ne p1, v2, :cond_2

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v0, 0x64

    aput v0, p1, v1

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aput v4, p1, v1

    .line 256
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Barring Timed out"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isAlwaysBarred(I)Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCallBarred(I)Z
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 181
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": isCallBarred:rand1:["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "] rand2:["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SsacManager"

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v7

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget v0, v0, p1

    int-to-double v7, v0

    cmpg-double v0, v2, v7

    const/4 v2, 0x0

    if-gez v0, :cond_1

    return v2

    :cond_1
    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v7

    const-wide v7, 0x3fe6666666666666L    # 0.7

    add-double/2addr v4, v7

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget v0, v0, p1

    int-to-double v7, v0

    mul-double/2addr v4, v7

    double-to-int v0, v4

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Barred for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_2

    return v2

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v3, p1

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v3, v0

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    return v1
.end method

.method public resetSSACInfo(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    const/16 v1, 0x64

    aput v1, v0, p1

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aput-boolean v1, v0, p1

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public updateSSACInfo(III)V
    .locals 6

    .line 199
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSSACManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :cond_0
    const/16 v1, 0x64

    .line 204
    const-string v2, "]"

    const-string v3, "], t["

    const-string v4, "SsacManager"

    const/4 v5, 0x1

    if-eq p2, v1, :cond_4

    if-ltz p2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aput p2, v0, p1

    .line 207
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    mul-int/lit16 p3, p3, 0x3e8

    aput p3, p2, p1

    const/4 p2, 0x0

    .line 208
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto/16 :goto_1

    .line 212
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Ignored updateSSACInfo : f["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    return-void

    .line 218
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_1

    .line 221
    :cond_4
    sget-object p2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_6

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_6

    sget-object p2, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_5

    goto :goto_0

    .line 227
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p2

    if-nez p2, :cond_8

    .line 228
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    goto :goto_1

    .line 222
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mBarredState:[Z

    aget-boolean p2, p2, p1

    if-ne p2, v5, :cond_7

    .line 223
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mSsacReset:Z

    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->resetSSACInfo(I)V

    .line 231
    :cond_8
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mCallTypeName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": updateSSACInfo : f["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mFactor:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->mTime:[I

    aget p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
