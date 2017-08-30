.class public Lcom/digits/sdk/android/models/DigitsUser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/digits/sdk/android/models/DigitsUser;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J
    .annotation runtime Lcom/google/a/a/c;
        a = "id"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        a = "id_str"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        a = "phone_number"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/models/DigitsUser$1;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/DigitsUser$1;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/models/DigitsUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iput-object p3, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iput-object p3, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/models/DigitsUser;)I
    .locals 4

    iget-wide v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iget-wide v2, p1, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iget-wide v2, p1, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/digits/sdk/android/models/DigitsUser;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/models/DigitsUser;->a(Lcom/digits/sdk/android/models/DigitsUser;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/digits/sdk/android/models/DigitsUser;

    iget-wide v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iget-wide v4, p1, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    iget-wide v4, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/models/DigitsUser;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
