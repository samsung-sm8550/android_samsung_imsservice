.class Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;
.super Ljava/lang/Object;
.source "DelegatingScheduledFuture.java"

# interfaces
.implements Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;


# instance fields
.field final synthetic this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;


# direct methods
.method constructor <init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    invoke-static {p0, p1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->access$000(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;Ljava/lang/Object;)Z

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    invoke-static {p0, p1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->access$100(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;Ljava/lang/Throwable;)Z

    return-void
.end method
