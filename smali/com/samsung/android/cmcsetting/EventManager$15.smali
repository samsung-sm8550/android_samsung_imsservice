.class Lcom/samsung/android/cmcsetting/EventManager$15;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/EventManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager$15;->this$0:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager$15;->this$0:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-static {v0}, Lcom/samsung/android/cmcsetting/EventManager;->access$1400(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 592
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager$15;->this$0:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-static {p0}, Lcom/samsung/android/cmcsetting/EventManager;->access$1400(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0}, Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;->onChangedLineInfo()V

    goto :goto_0

    :cond_1
    return-void
.end method
