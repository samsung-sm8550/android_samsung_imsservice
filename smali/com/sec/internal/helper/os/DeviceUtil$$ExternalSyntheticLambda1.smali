.class public final synthetic Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    new-instance p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
