.class public Lcom/digits/sdk/android/models/Invite;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/digits/sdk/android/internal/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/models/Invite$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Long;
    .annotation runtime Lcom/google/a/a/c;
        a = "inviter_id"
    .end annotation
.end field

.field public final b:Lcom/digits/sdk/android/models/Invite$Status;
    .annotation runtime Lcom/google/a/a/c;
        a = "invite_status"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        a = "invite_phone"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/models/Invite$1;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/Invite$1;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/models/Invite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    return-void

    :cond_0
    invoke-static {}, Lcom/digits/sdk/android/models/Invite$Status;->values()[Lcom/digits/sdk/android/models/Invite$Status;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/digits/sdk/android/models/Invite$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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

    check-cast p1, Lcom/digits/sdk/android/models/Invite;

    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    iget-object v3, p1, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-virtual {v1}, Lcom/digits/sdk/android/models/Invite$Status;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->a:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/models/Invite;->b:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-virtual {v0}, Lcom/digits/sdk/android/models/Invite$Status;->ordinal()I

    move-result v0

    goto :goto_0
.end method
