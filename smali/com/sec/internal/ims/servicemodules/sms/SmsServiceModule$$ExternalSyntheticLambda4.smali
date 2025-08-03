.class public final synthetic Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/sec/ims/sms/ISmsServiceEventListener;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;->f$1:Lcom/sec/ims/sms/ISmsServiceEventListener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;->f$0:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;->f$1:Lcom/sec/ims/sms/ISmsServiceEventListener;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->$r8$lambda$Gkk-mPM-HeCycj3WcNOeqJXGPx8(ILcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method
