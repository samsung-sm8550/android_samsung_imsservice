.class public Lcom/sec/internal/constants/ims/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# instance fields
.field public mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public mChildElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mNamespace:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object p3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/constants/ims/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 2

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/constants/ims/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChildElements(Ljava/util/List;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;)",
            "Lcom/sec/internal/constants/ims/XmlElement;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 194
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/XmlElement;

    .line 195
    iget-object v2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 196
    iget-object v2, p1, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 199
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 204
    iget-object v2, p1, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 207
    :cond_5
    iget-object v3, p1, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 211
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 212
    iget-object v2, p1, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 215
    :cond_7
    iget-object v3, p1, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 219
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v2, :cond_9

    .line 220
    iget-object v2, p1, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-eqz v2, :cond_a

    return v1

    .line 223
    :cond_9
    iget-object v3, p1, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 227
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-nez p0, :cond_b

    .line 228
    iget-object p0, p1, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-eqz p0, :cond_c

    return v1

    .line 231
    :cond_b
    iget-object p1, p1, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 176
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 177
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 178
    iget-object v3, p0, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 179
    iget-object p0, p0, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0

    .line 168
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p0

    return-object p0
.end method

.method public setValue(I)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    return-object p0
.end method
