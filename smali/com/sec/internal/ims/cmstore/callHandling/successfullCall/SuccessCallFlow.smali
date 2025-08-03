.class public Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;
.super Ljava/lang/Object;
.source "SuccessCallFlow.java"


# instance fields
.field mFlow:Ljava/lang/String;

.field mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mFlow:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    return-void
.end method
