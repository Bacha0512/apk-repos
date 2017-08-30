.class Lcom/digits/sdk/android/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/digits/sdk/android/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Locale;

.field public final b:I

.field private final c:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/w;->c:Ljava/text/Collator;

    iget-object v0, p0, Lcom/digits/sdk/android/w;->c:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    iput-object p1, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    iput p2, p0, Lcom/digits/sdk/android/w;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/w;)I
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/w;->c:Ljava/text/Collator;

    iget-object v1, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/digits/sdk/android/w;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/w;->a(Lcom/digits/sdk/android/w;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/digits/sdk/android/w;

    iget v2, p0, Lcom/digits/sdk/android/w;->b:I

    iget v3, p1, Lcom/digits/sdk/android/w;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    iget-object v3, p1, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/digits/sdk/android/w;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/digits/sdk/android/w;->a:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/digits/sdk/android/w;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
