.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;
.super Ljava/lang/Object;
.source "RtpLossRateNoti.java"


# instance fields
.field mInterval:I

.field mJitter:F

.field mLossRate:F

.field mNotification:I


# direct methods
.method public constructor <init>(IFFI)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mInterval:I

    .line 12
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mLossRate:F

    .line 13
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mJitter:F

    .line 14
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mNotification:I

    return-void
.end method


# virtual methods
.method public getInterval()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mInterval:I

    return p0
.end method

.method public getJitter()F
    .locals 0

    .line 26
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mJitter:F

    return p0
.end method

.method public getLossRate()F
    .locals 0

    .line 22
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mLossRate:F

    return p0
.end method

.method public getNotification()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mNotification:I

    return p0
.end method
