.class Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
.super Ljava/lang/Object;
.source "VVMScheduler.java"


# instance fields
.field COSName:Ljava/lang/String;

.field EmailAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field IsBlocked:Ljava/lang/String;

.field Language:Ljava/lang/String;

.field NUT:Ljava/lang/String;

.field V2t_Language:Ljava/lang/String;

.field VVMOn:Ljava/lang/String;

.field v2t_email:Ljava/lang/String;

.field v2t_sms:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    .line 157
    const-string v1, "eng"

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    .line 160
    const-string v1, "None"

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->V2t_Language:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->v2t_email:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->v2t_sms:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    return-void
.end method
