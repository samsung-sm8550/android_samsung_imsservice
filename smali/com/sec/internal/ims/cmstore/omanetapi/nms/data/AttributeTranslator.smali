.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# instance fields
.field private final mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/omanetapi/nms/data/Attribute;

    .line 26
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/AttributeList;-><init>()V

    .line 27
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    return-object v0
.end method

.method public setBCC([Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 93
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 94
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCC([Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 110
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 111
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChipList([Ljava/lang/String;)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CHIPLIST"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 576
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 577
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 579
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentDuration([Ljava/lang/String;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$DURATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 459
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 460
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentType([Ljava/lang/String;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTENT$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 281
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 282
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConversationId([Ljava/lang/String;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 316
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 317
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 319
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCpmGroup([Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$CPM$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 264
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 265
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDate([Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 42
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 43
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDirection([Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 127
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 128
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalMessageID([Ljava/lang/String;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 369
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 370
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionOriginalTo([Ljava/lang/String;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 387
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 388
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 390
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionStatus([Ljava/lang/String;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 334
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 335
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDispositionType([Ljava/lang/String;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 351
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 352
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEmailAddress([Ljava/lang/String;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EMAILADDRESS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 477
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 478
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtendedMessaging([Ljava/lang/String;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EXTENDED$MESSAGING"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 560
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 561
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtendedRCS([Ljava/lang/String;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$EXTENDED$RCS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 544
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 545
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 547
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrom([Ljava/lang/String;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 59
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 60
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGreetingType([Ljava/lang/String;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$X$CNS$GREETING$TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 441
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 442
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 444
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageBody([Ljava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGEBODY"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 230
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 231
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageContext([Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 144
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 145
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMessageId([Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 212
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 213
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMimeVersion([Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MIME$VERSION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 247
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 248
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNUT([Ljava/lang/String;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$NUT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 511
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 512
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOldPwd([Ljava/lang/String;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$OLD$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 423
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 424
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOpenGroup([Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$OPEN$GROUP"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 195
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 196
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPAssertedService([Ljava/lang/String;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$P$ASSERTED$SERVICE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 300
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 301
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPwd([Ljava/lang/String;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$PWD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 405
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 406
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSafetyMessage([Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SAFETY"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 161
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 162
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSubject([Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 178
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 179
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 528
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 529
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTo([Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 76
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 77
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTrafficType([Ljava/lang/String;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TRAFFICTYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 592
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 593
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tEmail([Ljava/lang/String;)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$EMAIL"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 660
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 661
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tLanguage([Ljava/lang/String;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$LANGUAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 609
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 610
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 612
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tResourceURL([Ljava/lang/String;)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$RES"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 626
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 627
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setV2tSMS([Ljava/lang/String;)V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$V2T$SMS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 643
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 644
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setVVMOn([Ljava/lang/String;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$VVMOn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Attribute;-><init>()V

    .line 494
    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    .line 495
    iput-object p1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->mAttributeList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
