.class public final synthetic Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda3;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda3;->f$0:Z

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->$r8$lambda$shA2_E1APC3tgWXu0r9Un_ZuMkw(ZLcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
