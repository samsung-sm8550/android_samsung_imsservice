.class public final Lcom/google/firebase/components/Qualified;
.super Ljava/lang/Object;
.source "Qualified.java"


# instance fields
.field private final qualifier:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    .line 29
    iput-object p2, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    return-void
.end method

.method public static qualified(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/firebase/components/Qualified;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;
    .locals 2

    .line 34
    new-instance v0, Lcom/google/firebase/components/Qualified;

    const-class v1, Lcom/google/firebase/components/Qualified$Unqualified;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/components/Qualified;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/firebase/components/Qualified;

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lcom/google/firebase/components/Qualified;

    .line 49
    iget-object v1, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object p0, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    const-class v1, Lcom/google/firebase/components/Qualified$Unqualified;

    if-ne v0, v1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/components/Qualified;->qualifier:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/components/Qualified;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
