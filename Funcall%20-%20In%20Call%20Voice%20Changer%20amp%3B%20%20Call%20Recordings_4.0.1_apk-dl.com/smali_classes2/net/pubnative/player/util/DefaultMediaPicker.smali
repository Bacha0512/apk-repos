.class public Lnet/pubnative/player/util/DefaultMediaPicker;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Lnet/pubnative/player/processor/VASTMediaPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/player/util/DefaultMediaPicker$1;,
        Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final maxPixels:I = 0x1388


# instance fields
.field SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceArea:I

.field private deviceHeight:I

.field private deviceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lnet/pubnative/player/util/DefaultMediaPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2}, Lnet/pubnative/player/util/DefaultMediaPicker;->setDeviceWidthHeight(II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lnet/pubnative/player/util/DefaultMediaPicker;->setDeviceWidthHeight()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/player/util/DefaultMediaPicker;)I
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/util/DefaultMediaPicker;

    .prologue
    .line 47
    iget v0, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceArea:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getBestMatch(Ljava/util/List;)Lnet/pubnative/player/model/VASTMediaFile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/player/model/VASTMediaFile;",
            ">;)",
            "Lnet/pubnative/player/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    sget-object v2, Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;

    const-string v3, "getBestMatch"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/pubnative/player/model/VASTMediaFile;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/player/model/VASTMediaFile;

    .line 187
    .local v1, "media":Lnet/pubnative/player/model/VASTMediaFile;
    invoke-direct {p0, v1}, Lnet/pubnative/player/util/DefaultMediaPicker;->isMediaFileCompatible(Lnet/pubnative/player/model/VASTMediaFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    .end local v1    # "media":Lnet/pubnative/player/model/VASTMediaFile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMediaFileCompatible(Lnet/pubnative/player/model/VASTMediaFile;)Z
    .locals 2
    .param p1, "media"    # Lnet/pubnative/player/model/VASTMediaFile;

    .prologue
    .line 172
    invoke-virtual {p1}, Lnet/pubnative/player/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prefilterMediaFiles(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/player/model/VASTMediaFile;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/pubnative/player/model/VASTMediaFile;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/player/model/VASTMediaFile;

    .line 105
    .local v1, "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    invoke-virtual {v1}, Lnet/pubnative/player/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;

    const-string v3, "Validator error: mediaFile type empty"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1}, Lnet/pubnative/player/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    sget-object v2, Lnet/pubnative/player/util/DefaultMediaPicker;->TAG:Ljava/lang/String;

    const-string v3, "Validator error: mediaFile url empty"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 119
    .end local v1    # "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private setDeviceWidthHeight()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 126
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceWidth:I

    .line 127
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceHeight:I

    .line 128
    iget v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceWidth:I

    iget v2, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceArea:I

    .line 129
    return-void
.end method

.method private setDeviceWidthHeight(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 133
    iput p1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceWidth:I

    .line 134
    iput p2, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceHeight:I

    .line 135
    iget v0, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceWidth:I

    iget v1, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lnet/pubnative/player/util/DefaultMediaPicker;->deviceArea:I

    .line 136
    return-void
.end method


# virtual methods
.method public pickVideo(Ljava/util/List;)Lnet/pubnative/player/model/VASTMediaFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/player/model/VASTMediaFile;",
            ">;)",
            "Lnet/pubnative/player/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lnet/pubnative/player/util/DefaultMediaPicker;->prefilterMediaFiles(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    new-instance v1, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;

    invoke-direct {v1, p0, v0}, Lnet/pubnative/player/util/DefaultMediaPicker$AreaComparator;-><init>(Lnet/pubnative/player/util/DefaultMediaPicker;Lnet/pubnative/player/util/DefaultMediaPicker$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-direct {p0, p1}, Lnet/pubnative/player/util/DefaultMediaPicker;->getBestMatch(Ljava/util/List;)Lnet/pubnative/player/model/VASTMediaFile;

    move-result-object v0

    .line 83
    .local v0, "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    goto :goto_0
.end method
