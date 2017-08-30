.class public Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder$1;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder$1;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/a/f;
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/a/f;

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/digits/sdk/android/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1
.end method

.method public a(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->c:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->d:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
