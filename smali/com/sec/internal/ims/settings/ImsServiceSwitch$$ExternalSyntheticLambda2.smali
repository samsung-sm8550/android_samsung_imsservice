.class public final synthetic Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->$r8$lambda$fJhzvbT-cDwZ9tv1uyu9V1edq3w(Lcom/sec/internal/ims/settings/ImsServiceSwitch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
