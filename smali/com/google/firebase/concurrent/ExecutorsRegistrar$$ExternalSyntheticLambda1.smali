.class public final synthetic Lcom/google/firebase/concurrent/ExecutorsRegistrar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->$r8$lambda$_E4by6EhoAkA7vHrP8i9uEoP8kU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method
