.class Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# instance fields
.field mShowRcsIcon:Z

.field mShowVoWiFiIcon:Z

.field mShowVolteIcon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZZZ)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    .line 421
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    .line 422
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method


# virtual methods
.method isShowRcsIcon()Z
    .locals 0

    .line 446
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return p0
.end method

.method isShowVolteIcon()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return p0
.end method

.method isShowVowiFiIcon()Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return p0
.end method

.method setShowRcsIcon(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return-void
.end method

.method setShowVoWiFiIcon(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return-void
.end method

.method setShowVolteIcon(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return-void
.end method
