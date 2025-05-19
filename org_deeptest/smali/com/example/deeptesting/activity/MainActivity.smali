.class public Lcom/example/deeptesting/activity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static final LOCKSTATE_LOCK:I = -0x1

.field public static final LOCKSTATE_UNKNOWN:I = 0x1

.field public static final LOCKSTATE_UNLOCK:I = 0x0

.field public static final LOCKSTATE_UNLOCKABLE:I = -0x2

.field public static final QUERYTYPE_APPLYSTATUS:I = 0xb

.field public static final QUERYTYPE_EXITTEST:I = 0xc

.field public static final QUERYTYPE_LOCKSTATUS:I = 0xa

.field public static final STATUS_NETWORK_TIMEOUT:I = 0x64

.field public static final STATUS_QUERY_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field public static mApplyRecord:Z

.field private static sOkHttpClient:Lokhttp3/OkHttpClient;


# instance fields
.field private mAccountLogIn:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mApply:Landroid/widget/Button;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mFlashLockState:I

.field private mHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mNetErrorLayout:Landroid/widget/RelativeLayout;

.field private mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

.field private mQueryType:I

.field private mStatus:Landroid/widget/TextView;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/example/deeptesting/activity/MainActivity;->sOkHttpClient:Lokhttp3/OkHttpClient;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mAccountLogIn:Z

    .line 58
    const/16 v0, 0x63

    iput v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mQueryType:I

    .line 70
    new-instance v0, Lcom/example/deeptesting/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/deeptesting/activity/MainActivity$1;-><init>(Lcom/example/deeptesting/activity/MainActivity;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/MainActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mQueryType:I

    return v0
.end method

.method static synthetic access$102(Lcom/example/deeptesting/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/example/deeptesting/activity/MainActivity;->mQueryType:I

    return p1
.end method

.method static synthetic access$200(Lcom/example/deeptesting/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/example/deeptesting/activity/MainActivity;->setFlashLockState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/example/deeptesting/activity/MainActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/example/deeptesting/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/deeptesting/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    return v0
.end method

.method static synthetic access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/example/deeptesting/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/example/deeptesting/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 39
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->init()V

    return-void
.end method

.method private changeToMainView()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mNetErrorLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mNetErrorLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 325
    :cond_0
    return-void
.end method

.method private changeToNetErrorView()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mNetErrorLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mNetErrorLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    const v1, 0x7f1000ea

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    :cond_0
    return-void
.end method

.method public static getsOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 328
    sget-object v0, Lcom/example/deeptesting/activity/MainActivity;->sOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private hasAuthorityPrivacy()Z
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    const-string v1, "pref.rom_update_filter_check_time_v3"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/PreUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .line 295
    invoke-static {p0}, Lcom/example/deeptesting/utils/Utils;->getFlashLockState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    .line 296
    return-void
.end method

.method private setFlashLockState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 290
    iput p1, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    .line 291
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 300
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 301
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 303
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 304
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 303
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 305
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->finish()V

    .line 136
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->requestWindowFeature(I)Z

    .line 142
    const v1, 0x7f0c001c

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/MainActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->initWindowParams()V

    .line 145
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/AccountAgentClient;->get()Lcom/heytap/usercenter/accountsdk/AccountAgentClient;

    move-result-object v1

    new-instance v2, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;->context(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;

    move-result-object v2

    sget-object v3, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;->ENV_RELEASE:Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;

    .line 148
    invoke-virtual {v2, v3}, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;->env(Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$ENV;)Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/heytap/usercenter/accountsdk/AccountSDKConfig$Builder;->create()Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgentClient;->init(Lcom/heytap/usercenter/accountsdk/AccountSDKConfig;)V

    .line 151
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    .line 152
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/example/deeptesting/utils/UserCenterHelper;->isLogin(Landroid/content/Context;)Z

    move-result v1

    # const v1, 0x1

    if-eqz v1, :cond_0

    .line 153
    iput-boolean v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mAccountLogIn:Z

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->hasAuthorityPrivacy()Z

    move-result v0

    # const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->init()V

    .line 159
    const v0, 0x7f090102

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 161
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/example/deeptesting/activity/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/example/deeptesting/activity/MainActivity$2;-><init>(Lcom/example/deeptesting/activity/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 169
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 170
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 171
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->inflateMenu(I)V

    .line 173
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mNetErrorLayout:Landroid/widget/RelativeLayout;

    .line 174
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    new-instance v1, Lcom/example/deeptesting/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/MainActivity$3;-><init>(Lcom/example/deeptesting/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f0901ab

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    new-instance v1, Lcom/example/deeptesting/activity/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/MainActivity$4;-><init>(Lcom/example/deeptesting/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 333
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 334
    const v0, 0x7f09018a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/example/deeptesting/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/MainActivity$5;-><init>(Lcom/example/deeptesting/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .line 281
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 282
    invoke-static {p0}, Lcom/example/deeptesting/utils/Utils;->hasAvaiablelNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->changeToNetErrorView()V

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->changeToMainView()V

    .line 287
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 246
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 247
    iget v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mFlashLockState:I

    const/4 v1, 0x1

    const v2, 0x7f1000bd

    if-eq v0, v1, :cond_0

    const v1, 0x7f1000be

    const v3, 0x7f10009d

    packed-switch v0, :pswitch_data_0

    .line 265
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApply:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/deeptesting/utils/UserCenterHelper;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mAccountLogIn:Z

    if-nez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/example/deeptesting/activity/MainActivity;->init()V

    .line 269
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showProgressDialog()V
    .locals 3

    .line 272
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 273
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->show()V

    .line 276
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setCancelable(Z)V

    .line 277
    return-void
.end method
