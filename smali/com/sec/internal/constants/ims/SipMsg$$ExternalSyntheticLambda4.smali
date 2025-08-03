.class public final synthetic Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/util/ArraySet;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/SipMsg;->$r8$lambda$QpdpKZaSicv7duV7uKjRYtoQPIg(Ljava/util/Set;Landroid/util/ArraySet;Ljava/lang/String;)V

    return-void
.end method
