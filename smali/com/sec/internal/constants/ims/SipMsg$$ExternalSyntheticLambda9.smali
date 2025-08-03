.class public final synthetic Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->$r8$lambda$DX5xun__ZJzDtRvE_wQx6vFyKsc(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/util/List;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    return-object p0
.end method
