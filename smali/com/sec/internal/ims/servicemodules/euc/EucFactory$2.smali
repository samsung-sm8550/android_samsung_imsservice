.class Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;
.super Ljava/lang/Object;
.source "EucFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

.field final synthetic val$acceptButton:Ljava/lang/String;

.field final synthetic val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$rejectButton:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/EucFactory;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/EucFactory;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$language:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$subject:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$acceptButton:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$rejectButton:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptButton()Ljava/lang/String;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$acceptButton:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$language:Ljava/lang/String;

    return-object p0
.end method

.method public getRejectButton()Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$rejectButton:Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$subject:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;->val$text:Ljava/lang/String;

    return-object p0
.end method
