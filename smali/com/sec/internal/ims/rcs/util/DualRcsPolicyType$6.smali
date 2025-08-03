.class final enum Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6;
.super Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
.source "DualRcsPolicyType.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method isDualRcsPolicyConditionMatch(I)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_1
    return p0
.end method
