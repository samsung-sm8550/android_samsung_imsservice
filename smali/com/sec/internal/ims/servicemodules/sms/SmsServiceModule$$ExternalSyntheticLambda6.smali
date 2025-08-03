.class public final synthetic Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda6;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->$r8$lambda$Tj06laYZb0XgdJ9C0CYxVAc6gBA(ILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method
