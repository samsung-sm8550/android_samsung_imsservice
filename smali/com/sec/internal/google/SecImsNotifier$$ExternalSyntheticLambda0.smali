.class public final synthetic Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p1}, Lcom/sec/internal/google/SecImsNotifier;->$r8$lambda$S1qy7nULOk4AGZ1_mcUPa9Yh8Yg(Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method
