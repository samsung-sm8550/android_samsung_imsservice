.class public Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;
.super Ljava/lang/Object;
.source "SimConstants.java"


# instance fields
.field public mId:I

.field public mImpi:Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mNonce:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mId:I

    .line 86
    iput-object p3, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mImpi:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    return-void
.end method
