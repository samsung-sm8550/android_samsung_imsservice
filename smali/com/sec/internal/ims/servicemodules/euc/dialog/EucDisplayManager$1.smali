.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field final eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

.field final eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field final hasPin:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

.field final synthetic val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

.field final synthetic val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

.field final synthetic val$lang:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$monClickAction(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 154
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 155
    new-instance p3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object p4

    .line 156
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-direct {p3, p4, v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 157
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getPin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    return-void
.end method

.method private onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmDialogs(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 165
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f070002

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f050031

    .line 167
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 169
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    .line 170
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const v3, 0x7f05003e

    .line 172
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f050041

    .line 174
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 175
    new-instance v5, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;

    invoke-direct {v5, p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getAcceptButton()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 195
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported euc type for display!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getRejectButton()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 213
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    :cond_5
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;

    invoke-direct {v6, p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-eq v3, v6, :cond_6

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne v3, v6, :cond_7

    .line 229
    :cond_6
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;

    invoke-direct {v3, p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 241
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    if-eqz v3, :cond_8

    .line 242
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

    invoke-direct {v3, p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 279
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v3, 0x7f6

    .line 281
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 283
    :cond_9
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 284
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmDialogs(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f050037

    .line 288
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    .line 289
    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;)V

    .line 288
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    return-void
.end method
