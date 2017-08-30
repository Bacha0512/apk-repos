.class Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/player/util/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/pubnative/player/model/VASTMediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/player/util/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lnet/pubnative/player/util/DefaultMediaPicker;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;->this$0:Lnet/pubnative/player/util/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/pubnative/player/util/DefaultMediaPicker;Lnet/pubnative/player/util/DefaultMediaPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/pubnative/player/util/DefaultMediaPicker;
    .param p2, "x1"    # Lnet/pubnative/player/util/DefaultMediaPicker$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;-><init>(Lnet/pubnative/player/util/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Lnet/pubnative/player/model/VASTMediaFile;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lnet/pubnative/player/model/VASTMediaFile;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;->compare(Lnet/pubnative/player/model/VASTMediaFile;Lnet/pubnative/player/model/VASTMediaFile;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/pubnative/player/model/VASTMediaFile;Lnet/pubnative/player/model/VASTMediaFile;)I
    .locals 7
    .param p1, "obj1"    # Lnet/pubnative/player/model/VASTMediaFile;
    .param p2, "obj2"    # Lnet/pubnative/player/model/VASTMediaFile;

    .prologue
    .line 144
    invoke-virtual {p1}, Lnet/pubnative/player/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lnet/pubnative/player/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v0, v4, v5

    .line 145
    .local v0, "obj1Area":I
    invoke-virtual {p2}, Lnet/pubnative/player/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lnet/pubnative/player/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v2, v4, v5

    .line 148
    .local v2, "obj2Area":I
    iget-object v4, p0, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;->this$0:Lnet/pubnative/player/util/DefaultMediaPicker;

    # getter for: Lnet/pubnative/player/util/DefaultMediaPicker;->deviceArea:I
    invoke-static {v4}, Lnet/pubnative/player/util/DefaultMediaPicker;->access$100(Lnet/pubnative/player/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 149
    .local v1, "obj1Diff":I
    iget-object v4, p0, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;->this$0:Lnet/pubnative/player/util/DefaultMediaPicker;

    # getter for: Lnet/pubnative/player/util/DefaultMediaPicker;->deviceArea:I
    invoke-static {v4}, Lnet/pubnative/player/util/DefaultMediaPicker;->access$100(Lnet/pubnative/player/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 150
    .local v3, "obj2Diff":I
    # getter for: Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/player/util/DefaultMediaPicker;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaComparator: obj1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " obj2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-ge v1, v3, :cond_0

    .line 155
    const/4 v4, -0x1

    .line 163
    :goto_0
    return v4

    .line 157
    :cond_0
    if-le v1, v3, :cond_1

    .line 159
    const/4 v4, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
