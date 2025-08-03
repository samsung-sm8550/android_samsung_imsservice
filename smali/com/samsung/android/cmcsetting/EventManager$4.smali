.class Lcom/samsung/android/cmcsetting/EventManager$4;
.super Landroid/database/ContentObserver;
.source "EventManager.java"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/EventManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager$4;->this$0:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watchActivationDbChangeObserver : selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager$4;->this$0:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-static {p0}, Lcom/samsung/android/cmcsetting/EventManager;->access$300(Lcom/samsung/android/cmcsetting/EventManager;)V

    return-void
.end method
