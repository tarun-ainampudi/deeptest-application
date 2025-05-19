.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;
.super Ljava/lang/Object;
.source "COUISearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorHelper"
.end annotation


# instance fields
.field private volatile mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDuration:J

.field private mIconTranslation:I

.field private mToEditEndRunnable:Ljava/lang/Runnable;

.field private mToEditStartRunnable:Ljava/lang/Runnable;

.field private mToNormalEndRunnable:Ljava/lang/Runnable;

.field private mToNormalStartRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 2

    .line 1084
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1800(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1029
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1031
    new-instance p1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    .line 1046
    new-instance p1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    .line 1057
    new-instance p1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$3;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    .line 1072
    new-instance p1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$4;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    .line 1085
    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 1025
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private startCancelButtonEnterValueAnimator()V
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1358
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1359
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1360
    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$13;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$13;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1370
    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$14;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$14;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1383
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1384
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startCancelButtonExitValueAnimator()V
    .locals 3

    .line 1325
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1326
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1327
    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$11;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1337
    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$12;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$12;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1352
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1353
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startSearchIconFadeInAnimator()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1169
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1171
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$6;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1173
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1182
    :cond_0
    return-void
.end method

.method private startSearchIconFadeOutAnimator()V
    .locals 4

    .line 1146
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1148
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1149
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1150
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1151
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$5;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1152
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1163
    :cond_0
    return-void
.end method


# virtual methods
.method public runStateChangeAnimation(I)V
    .locals 1
    .param p1, "targetState"    # I

    .line 1093
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1097
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startToEditAnimator()V

    goto :goto_0

    .line 1098
    :cond_1
    if-nez p1, :cond_2

    .line 1099
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startToNormalAnimator()V

    .line 1101
    :cond_2
    :goto_0
    return-void
.end method

.method startBackgroundEnterAnimator()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1261
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1262
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1263
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1264
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1265
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1267
    :cond_0
    return-void
.end method

.method startBackgroundExitAnimator()V
    .locals 3

    .line 1242
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1244
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1245
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$9;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1246
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1255
    :cond_0
    return-void
.end method

.method startCancelButtonEnterAnimator()V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1303
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1306
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonEnterValueAnimator()V

    .line 1308
    :cond_0
    return-void
.end method

.method startCancelButtonExitAnimator()V
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1313
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1314
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->isPerformClicked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1316
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setPerformClicked(Z)V

    .line 1320
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V

    .line 1322
    :cond_1
    return-void
.end method

.method startSearchIconEnterAnimator()V
    .locals 5

    .line 1213
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1214
    iget v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1222
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1223
    const/high16 v0, 0x42a00000    # 80.0f

    .line 1224
    .local v0, "endRotation":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1225
    .local v1, "pivotx":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1226
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1227
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1228
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 1229
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$8;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$8;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1230
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1237
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1239
    .end local v0    # "endRotation":F
    .end local v1    # "pivotx":I
    :cond_2
    return-void
.end method

.method startSearchIconExitAnimator()V
    .locals 5

    .line 1185
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1186
    iget v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1194
    :cond_1
    :goto_0
    const/high16 v0, 0x42a00000    # 80.0f

    .line 1195
    .local v0, "endRotation":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1196
    .local v1, "pivotx":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1197
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1198
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1199
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$7;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$7;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1200
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1207
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1210
    .end local v0    # "endRotation":F
    .end local v1    # "pivotx":I
    :cond_2
    return-void
.end method

.method startSearchViewEnterAnimator()V
    .locals 3

    .line 1271
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setAlpha(F)V

    .line 1273
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1276
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1280
    :cond_0
    return-void
.end method

.method startSearchViewExitAnimator()V
    .locals 3

    .line 1283
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setAlpha(F)V

    .line 1285
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1286
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1287
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper$10;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)V

    .line 1288
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1298
    :cond_0
    return-void
.end method

.method startToEditAnimator()V
    .locals 3

    .line 1107
    monitor-enter p0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    monitor-exit p0

    return-void

    .line 1111
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1113
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2400(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchIconExitAnimator()V

    goto :goto_0

    .line 1116
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchIconFadeOutAnimator()V

    .line 1118
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startBackgroundExitAnimator()V

    .line 1119
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchViewEnterAnimator()V

    .line 1120
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonEnterAnimator()V

    .line 1121
    return-void

    .line 1111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startToNormalAnimator()V
    .locals 3

    .line 1127
    monitor-enter p0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    monitor-exit p0

    return-void

    .line 1131
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1133
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$2400(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchIconEnterAnimator()V

    goto :goto_0

    .line 1138
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchIconFadeInAnimator()V

    .line 1140
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startBackgroundEnterAnimator()V

    .line 1141
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startSearchViewExitAnimator()V

    .line 1142
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonExitAnimator()V

    .line 1143
    return-void

    .line 1131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
